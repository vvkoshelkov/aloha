<?php global $kernel; ?>
<div class="row">
    <div class="col-lg-10 col-md-12 col-sm-12 mx-auto">
        <table class="table table-striped col-12">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Login</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Действия</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    foreach ($kernel->getOption('result') as $item) {
                        echo "<tr>
                                <th scope='row'>{$item["l_users"]}</th>
                                <td>{$item["login"]}</td>
                                <td>{$item["name"]}</td>
                                <td><a href='/admin/usersAdmin/edit.html' class='ajax' item-data='uid={$item["l_users"]}' data-title=\"<a href='/admin' class='black no-decor'>Главная</a> > Редактирование пользователя\" data-target='#content'>Редактировать</a> <a href='/admin/usersAdmin/remove.html'>Удалить</a></td>
                            </tr>";
                    }
                ?>
            </tbody>
        </table>
    </div>
</div>