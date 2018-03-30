package chap07.event;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/event")
public class EventController {
   private static final String REDIRECT_EVENT_LIST = "redirect:/event/list";
   private EventService eventService;
   public EventController() {
      eventService = new EventService();
   }
   
   //list 와 list2는 표현방식만 다를뿐 결과는 같다
   @RequestMapping("/list")
   public String list(SearchOption option, Model model) { //리턴타입이 String인 경우 Model에 넣어줘야 한다
      List<Event> eventList = eventService.getOpenedEventList(option);
      model.addAttribute("eventList", eventList);
      model.addAttribute("eventTypes", EventType.values());
      return "event/list";
   }
   
   @RequestMapping("/list2")
   public ModelAndView list2(SearchOption option) {
      List<Event> eventList = eventService.getOpenedEventList(option);
      ModelAndView modelView = new ModelAndView();
      modelView.setViewName("event/list");
      modelView.addObject("eventList", eventList);
      modelView.addObject("eventTypes", EventType.values());
      return modelView;
   }
   
   @RequestMapping("/detail")
   public String detail(HttpServletRequest request, Model model) throws IOException{
      String id = request.getParameter("id");
      if(id == null)
         return REDIRECT_EVENT_LIST;
      Long eventId = null;
      try {
         eventId = Long.parseLong(id);
      }catch(NumberFormatException e) {
         return REDIRECT_EVENT_LIST;
      }
      Event event = getEvent(eventId);
      if(event == null)
         return REDIRECT_EVENT_LIST;
      
      model.addAttribute("event", event);
      return "event/detail";
   }
   
   private Event getEvent(Long eventId) {
      return eventService.getEvent(eventId);
   }
   
   @RequestMapping("/detail2")
   public String detail2(@RequestParam(value="id",defaultValue="2") long eventId, Model model) {
	   Event event = getEvent(eventId);
	   if(event == null)
		   return REDIRECT_EVENT_LIST;
	   model.addAttribute("event", event);
	   return "event/detail";
   }
   
   @RequestMapping("/detail3")
   public String detail3(long eventId, String name,Model model) {
	   Event event = getEvent(eventId);
	   if(event == null)
		   return REDIRECT_EVENT_LIST;
	   model.addAttribute("event", event);
	   return "event/detail";
   }
   
}
