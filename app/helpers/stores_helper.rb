module StoresHelper
  def store_information(store)
    "#{store.name} (地址：#{
    if store.adress.present?
      store.adress
    else
      '未填寫'
    end
    }, 電話：#{
    if store.tel.present?
      store.tel
    else
      '未填寫'
    end
    })"
  end
end
