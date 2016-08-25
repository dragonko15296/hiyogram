module HiyosHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm'
        confirm_hiyos_path
        elsif action_name == 'edit'
        hiyo_path
        end
    end
end
