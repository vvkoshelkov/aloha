<? global $kernel; ?>
<div class="row">
    <div class="col-lg-10 col-md-12 col-sm-12 mx-auto">
      <div class="card">
        <div class="card-body px-lg-5 pt-0">
          <form action="#" class="text-center ajax" data-target="#content" href="/admin/objects/add.html" method="POST" style="color: #757575;">
            <div class="aloha-form-el">
              <input type="text" name="agent_name" id="agent_name"  />
              <span class="highlight"></span><span class="bar"></span><label for="agent_name">Имя агента</label>
            </div>

            <div class="aloha-form-el">
              <input type="tel" name="agent_phone" id="agent_phone"  />
              <span class="highlight"></span><span class="bar"></span><label for="agent_phone">Телефон агента</label>
            </div>
            <div class="aloha-form-el">
              <input type="mail" name="agent_mail" id="agent_mail"  />
              <span class="highlight"></span><span class="bar"></span><label for="agent_mail">e-mail агента</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="ad_source" id="ad_source"  />
              <span class="highlight"></span><span class="bar"></span><label for="ad_source">Ссылка на объявление</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="address" id="address"  />
              <span class="highlight"></span><span class="bar"></span><label for="address">Полный адрес</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="addrStreet" id="addrStreet"  />
              <span class="highlight"></span><span class="bar"></span><label for="addrStreet">Улица</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="addrHome" id="addrHome"  />
              <span class="highlight"></span><span class="bar"></span><label for="addrHome">Дом</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="addrHome2" id="addrHome2"  />
              <span class="highlight"></span><span class="bar"></span><label for="addrHome2">Корпус</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="addrHome3" id="addrHome3"  />
              <span class="highlight"></span><span class="bar"></span><label for="addrHome3">Строение</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="addrLitera" id="addrLitera"  />
              <span class="highlight"></span><span class="bar"></span><label for="addrLitera">Литер</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="ownership" id="ownership"  />
              <span class="highlight"></span><span class="bar"></span><label for="ownership">Владение</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="saler_name" id="saler_name"  />
              <span class="highlight"></span><span class="bar"></span><label for="saler_name">Имя продавца</label>
            </div>
            <div class="aloha-form-el">
              <input type="tel" name="saler_phone" id="saler_phone"  />
              <span class="highlight"></span><span class="bar"></span><label for="saler_phone">Телефон продавца</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="cost" id="cost"  />
              <span class="highlight"></span><span class="bar"></span><label for="cost">Стоимость</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="cost_m" id="cost_m"  />
              <span class="highlight"></span><span class="bar"></span><label for="cost_m">Стоимость за м2</label>
            </div>
            <div class="aloha-form-el">
              <input type="date" name="date" id="date">
              <span class="highlight"></span><span class="bar"></span><label for="date">Дата размещения объявления</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="rooms_count" id="rooms_count"  />
              <span class="highlight"></span><span class="bar"></span><label for="rooms_count">Количество комнат</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="floor" id="floor"  />
              <span class="highlight"></span><span class="bar"></span><label for="floor">Этаж</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="floors_count" id="floors_count"  />
              <span class="highlight"></span><span class="bar"></span><label for="floors_count">Количество этажей</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="total_area" id="total_area"  />
              <span class="highlight"></span><span class="bar"></span><label for="total_area">Общая площадь</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="living_area" id="living_area"  />
              <span class="highlight"></span><span class="bar"></span><label for="living_area">Жилая площадь</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="kitchen_area" id="kitchen_area"  />
              <span class="highlight"></span><span class="bar"></span><label for="kitchen_area">Кухня площадь</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="ceiling_height" id="ceiling_height"  />
              <span class="highlight"></span><span class="bar"></span><label for="ceiling_height">Высота потолка</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="sale_type" id="sale_type"  />
              <span class="highlight"></span><span class="bar"></span><label for="sale_type">Тип продажи (свободная/альтернатива)</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="owners_number" id="owners_number"  />
              <span class="highlight"></span><span class="bar"></span><label for="owners_number">Количество собственников</label>
            </div>
            <div class="aloha-form-el">
              <select name="underage_owners" id="underage_owners" >
                <option value="0">Нет</option>
                <option value="1">Есть</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="underage_owners">Младше 18 лет</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="construction_year" id="construction_year">
              <span class="highlight"></span><span class="bar"></span><label for="construction_year">Год постройки</label>
            </div>
            <div class="aloha-form-el">
              <select name="emergency_fact" id="emergency_fact"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="emergency_fact">Факт признания дома аварийным</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="entrances_count" id="entrances_count"  />
              <span class="highlight"></span><span class="bar"></span><label for="entrances_count">Количество подъездов</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="elevators_count" id="elevators_count"  />
              <span class="highlight"></span><span class="bar"></span><label for="elevators_count">Количество лифтов</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="foundation_type" id="foundation_type"  />
              <span class="highlight"></span><span class="bar"></span><label for="foundation_type">Тип фундамента</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="overlap_type" id="overlap_type"  />
              <span class="highlight"></span><span class="bar"></span><label for="overlap_type">Тип перекрытий</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="walls_material" id="walls_material"  />
              <span class="highlight"></span><span class="bar"></span><label for="walls_material">Материал несущих стен</label>
            </div>
            <div class="aloha-form-el">
              <select name="garbage_type" id="garbage_type"  >
                <option value="0">на лестничной клетке</option>
                <option value="1">контейнер на улице</option>
                <option value="2">контейнер на этаже</option>
                <option value="3">другое</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="garbage_type">Тип мусоропровода</label>
            </div>
            <div class="aloha-form-el">
              <select name="gas" id="gas"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="gas">Газ</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="house_series" id="house_series"  />
              <span class="highlight"></span><span class="bar"></span><label for="house_series">Серия дома</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="educational_f" id="educational_f"  />
              <span class="highlight"></span><span class="bar"></span><label for="educational_f">Учебные заведения</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="educational_s" id="educational_s"  />
              <span class="highlight"></span><span class="bar"></span><label for="educational_s">Учебные заведения 2</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="educational_t" id="educational_t"  />
              <span class="highlight"></span><span class="bar"></span><label for="educational_t">Учебные заведения 3</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="health_f" id="health_f"  />
              <span class="highlight"></span><span class="bar"></span><label for="health_f">Здоровье 1</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="health_s" id="health_s"  />
              <span class="highlight"></span><span class="bar"></span><label for="health_s">Здоровье 2</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="health_t" id="health_t"  />
              <span class="highlight"></span><span class="bar"></span><label for="health_t">Здоровье 3</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="shop_f" id="shop_f"  />
              <span class="highlight"></span><span class="bar"></span><label for="shop_f">Продукты 1</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="shop_s" id="shop_s"  />
              <span class="highlight"></span><span class="bar"></span><label for="shop_s">Продукты 2</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="shop_t" id="shop_t"  />
              <span class="highlight"></span><span class="bar"></span><label for="shop_t">Продукты 3</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="cafe_f" id="cafe_f"  />
              <span class="highlight"></span><span class="bar"></span><label for="cafe_f">Бары, кафе, рестораны 1</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="cafe_s" id="cafe_s"  />
              <span class="highlight"></span><span class="bar"></span><label for="cafe_s">Бары, кафе, рестораны 2</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="cafe_t" id="cafe_t"  />
              <span class="highlight"></span><span class="bar"></span><label for="cafe_t">Бары, кафе, рестораны 3</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="sport_f" id="sport_f"  />
              <span class="highlight"></span><span class="bar"></span><label for="sport_f">Спорт и отдых 1</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="sport_s" id="sport_s"  />
              <span class="highlight"></span><span class="bar"></span><label for="sport_s">Спорт и отдых 2</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="sport_t" id="sport_t"  />
              <span class="highlight"></span><span class="bar"></span><label for="sport_t">Спорт и отдых 3</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="park_f" id="park_f"  />
              <span class="highlight"></span><span class="bar"></span><label for="park_f">Досуг 1</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="park_s" id="park_s"  />
              <span class="highlight"></span><span class="bar"></span><label for="park_s">Досуг 2</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="park_t" id="park_t"  />
              <span class="highlight"></span><span class="bar"></span><label for="park_t">Досуг 3</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="announcement_current" id="announcement_current"  />
              <span class="highlight"></span><span class="bar"></span><label for="announcement_current">Актуально ли объявление?</label>
            </div>
            <div class="aloha-form-el">
              <select type="text" name="F_o_R" id="F_o_R"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="F_o_R">фасадный/сталинка</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="entrance_which" id="entrance_which"  />
              <span class="highlight"></span><span class="bar"></span><label for="entrance_which">Какой подьезд?</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="what_repairs" id="what_repairs"  />
              <span class="highlight"></span><span class="bar"></span><label for="what_repairs">Какой ремонт?</label>
            </div>
            <div class="aloha-form-el">
              <select name="contract_cost" id="contract_cost"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="contract_cost">Стоимость в договоре – полная/ нет</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="registered_peoples" id="registered_peoples"  />
              <span class="highlight"></span><span class="bar"></span><label for="registered_peoples">Сколько человек прописано?</label>
            </div>
            <div class="aloha-form-el">
              <select name="apartment_redevelopment" id="apartment_redevelopment"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="apartment_redevelopment">Была ли перепланировка квартиры?</label>
            </div>
            <div class="aloha-form-el">
              <select name="owner_person" id="owner_person"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="owner_person">Собственник – физ лицо или юр лицо?</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="avalible_parking" id="avalible_parking"  />
              <span class="highlight"></span><span class="bar"></span><label for="avalible_parking">Наличие парковки</label>
            </div>
            <div class="aloha-form-el">
              <select name="balcony" id="balcony"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="balcony">Балкон?</label>
            </div>
            <div class="aloha-form-el">
              <select name="where_windows_go" id="where_windows_go"  >
                <option value="0">Во двор</option>
                <option value="1">На улицу</option>
                <option value="2">Торец</option>
                <option value="3">Распашонка</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="where_windows_go">Куда выходят окна? Улица/двор/торец</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="bathroom" id="bathroom"  />
              <span class="highlight"></span><span class="bar"></span><label for="bathroom">Санузел</label>
            </div>
            <div class="aloha-form-el">
              <select name="concierge" id="concierge"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="concierge">Консьерж</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="ttk" id="ttk"  />
              <span class="highlight"></span><span class="bar"></span><label for="ttk">До ТТК</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="mkad" id="mkad"  />
              <span class="highlight"></span><span class="bar"></span><label for="mkad">До МКАД</label>
            </div>
            <div class="aloha-form-el">
              <select name="playground" id="playground"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="playground">детская площадка</label>
            </div>
            <div class="aloha-form-el">
              <select name="sport_playground" id="sport_playground"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="sport_playground">спортивная площадка</label>
            </div>
            <div class="aloha-form-el">
              <select name="renovation" id="renovation"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="renovation">реновация</label>
            </div>
            <div class="aloha-form-el">
              <select name="agentLookRoom" id="agentLookRoom"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="agentLookRoom">Агент смотрел помещение</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="agency_name" id="agency_name"  />
              <span class="highlight"></span><span class="bar"></span><label for="agency_name">Название агентства/ агентств</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="agency_pay" id="agency_pay"  />
              <span class="highlight"></span><span class="bar"></span><label for="agency_pay">Агентство готово делиться комиссией</label>
            </div>
            <div class="aloha-form-el">
              <select name="whoOnPhone" id="whoOnPhone"  >
                <option value="0">агент</option>
                <option value="1">собственник</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="whoOnPhone">Кто на телефоне?</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="whySelling" id="whySelling"  />
              <span class="highlight"></span><span class="bar"></span><label for="whySelling">Почему продается</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="entrances_special" id="entrances_special"  />
              <span class="highlight"></span><span class="bar"></span><label for="entrances_special">Специальное оснащение подъездов</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="livedAfterRepear" id="livedAfterRepear"  />
              <span class="highlight"></span><span class="bar"></span><label for="livedAfterRepear">Жил ли кто то после ремонта</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="apartmentsPerFloor" id="apartmentsPerFloor"  />
              <span class="highlight"></span><span class="bar"></span><label for="apartmentsPerFloor">Количество квартир на этаже</label>
            </div>
            <div class="aloha-form-el">
              <select name="fencedArea" id="fencedArea"  >
                <option value="0">Нет</option>
                <option value="1">Да</option>
              </select>
              <span class="highlight"></span><span class="bar"></span><label for="fencedArea">Огороженная территория</label>
            </div>

            <div class="aloha-form-el">
            <input type="file" id="img1" name="img1" accept="image/jpeg"/>
            </div>
            <div class="aloha-form-el">
            <input type="file" id="img2" name="img1" accept="image/jpeg"/>
            </div>
            <div class="aloha-form-el">
            <input type="file" id="img3" name="img1" accept="image/jpeg"/>
            </div>
            <div class="aloha-form-el">
            <input type="file" id="img4" name="img1" accept="image/jpeg"/>
            </div>
            <div class="aloha-form-el">
            <input type="file" id="img5" name="img1" accept="image/jpeg"/>
            </div>



            <div class="aloha-form-el">
              <textarea name="comment" id="comment" ></textarea>
              <span class="highlight"></span><span class="bar"></span><label for="comment">комментарий</label>
            </div>
            <div class="aloha-form-el">
              <select name="metro" id="metro" >
                  <?php
                    foreach ($kernel->getOption('metro') as $id => $station) {
                      echo '<option value="'.$id.'">'.$station.'</option>';
                    }
                  ?>
              </select>

              <span class="highlight"></span><span class="bar"></span><label for="metro">метро</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="electric_train" id="electric_train"  />
              <span class="highlight"></span><span class="bar"></span><label for="electric_train">электричка</label>
            </div>
            <button type="submit" name="submit" class="button">Сохранить</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script>
  document.addEventListener('DOMContentLoaded', function(){ // Аналог $(document).ready(function(){
  Waves.attach('.button', ['waves-button', 'waves-float']);
    Waves.init();
  });
    </script>

