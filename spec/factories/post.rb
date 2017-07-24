FactoryGirl.define do
    factory :post, class: Post  do
        id "100"
        title "intro"
        content "stuffs here"
        created_at "01/01/12017"
        updated_at "01/01/2017"
        user_id "1"
    end
end


