package chap07.c01.quickstart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.MembershipService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import chap07.member.MemberInfo;
import chap07.member.MemberService;
import chap07.member.OrderInfo;

@Controller
public class MemberController {
	
	private MemberService memberService;
	@RequestMapping("/members")
	public String members(Model model) {
		List<MemberInfo> members = memberService.getMembers();
		model.addAttribute("members",members);
		return "member/members";
	}
	
	@RequestMapping("/members/{memberId}")
	public String memberDetail(@PathVariable String memberId, Model model){
		MemberInfo mi = memberService.getMemberInfo(memberId);
		if(mi == null) {
			return "member/memberNotFound";
		}
		model.addAttribute("member",mi);
		return "member/memberDetail";
	}
	@RequestMapping("/members/{memberId}/orders")
	public String memberOrders(@PathVariable("memberId")String memberId,Model model){
		MemberInfo mi = memberService.getMemberInfo(memberId);
		if(mi == null) {
			return "member/memberNotFound";
		}
		model.addAttribute("member",mi);
		model.addAttribute("orders",getOrdersOfMember(memberId));
		return "member/memberOrders";
	}
	private List<OrderInfo> getOrdersOfMember(String memberId){
		return Arrays.asList(
				new OrderInfo(1L,10000,memberId),
				new OrderInfo(2L, 15000, memberId)
				);
	}
	@RequestMapping("/members/{memberId}/orders/{orderId}")
	public String memberOrderDetail(@PathVariable("memberId")
		String memberId, @PathVariable("orderId") Long orderId, Model model) {
		model.addAttribute("member", memberService.getMemberInfo(memberId));
		model.addAttribute("order", new OrderInfo(orderId, orderId.intValue() * 5000 + 5000,memberId));
		return "member/memberOrderDetail";
	}
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}	
}
