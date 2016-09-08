package ${packageName}.controller.webpage;

import java.util.*;
import ${packageName}.model.${upperFirstLetterName};
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ${packageName}.service.${upperFirstLetterName}Service;
import ${packageName}.common.Page;
import org.springframework.web.servlet.ModelAndView;

/**
* This is generated by Sloth.
*/
@RestController
@RequestMapping(value = "/p/${name}")
public class ${upperFirstLetterName}PageController {

	@Autowired
	private ${upperFirstLetterName}Service ${lowerFirstLetterName}Service;

	@RequestMapping(value = "/list", method= RequestMethod.GET)
	public ModelAndView list(@RequestParam(value = "p", required = false) Integer pageNo) {
		ModelAndView mav = new ModelAndView();
		if (null != pageNo && pageNo != 1){
			mav.addObject("rows", ${lowerFirstLetterName}Service.page(pageNo, 10).getResult());
		}else{
			mav.addObject("rows", ${lowerFirstLetterName}Service.list());
		}
		mav.setViewName("/${upperFirstLetterName}List");
		return mav;
	}

	@RequestMapping(value = "/detail/{id}", method= RequestMethod.GET)
	public ModelAndView detail(@PathVariable Object id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("row", ${lowerFirstLetterName}Service.getById(id));
		mav.setViewName("/${upperFirstLetterName}Detail");
		return mav;
	}

	@RequestMapping(value = "/create", method= RequestMethod.GET)
		public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("autoIncrement", ${lowerFirstLetterName}Service.increment());
		mav.setViewName("/${upperFirstLetterName}Create");
		return mav;
	}

}
