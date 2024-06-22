package jzxy.cbq.backend.service;

import com.baomidou.mybatisplus.extension.service.IService;
import jzxy.cbq.backend.entity.dto.Account;
import jzxy.cbq.backend.entity.vo.request.ConfirmResetVO;
import jzxy.cbq.backend.entity.vo.request.EmailRegisterVO;
import jzxy.cbq.backend.entity.vo.request.EmailResetVO;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * @author: cbq1024
 * @description: AccountService
 * @since 2024/6/22 17:08
 */
public interface AccountService extends IService<Account>, UserDetailsService {
    Account findAccountByNameOrEmail(String text);

    String registerEmailVerifyCode(String type, String email, String address);

    String registerEmailAccount(EmailRegisterVO info);

    String resetEmailAccountPassword(EmailResetVO info);

    String resetConfirm(ConfirmResetVO info);
}
