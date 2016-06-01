<ul class="start">
    <?php
        if($totalOfPage != 1) {
            if ($currentPage != 1) {
                if (empty($search) == false) {
                    echo '<li ><a href="index.php?c=search&search=' . $search . '&p=' . ($currentPage - 1) . '"><i class="back"></i></a></li>';
                } else {
                    echo '<li ><a href="index.php?c=category&ct=' . $categoryID . '&p=' . ($currentPage - 1) . '"><i class="back"></i></a></li>';
                }
            }

            for ($i = 1; $i <= $totalOfPage; $i++) {
                if ($i == $currentPage) {
                    echo '<li><span>' . $i . '</span></li>';
                } else {
                    if(empty($search) == false)
                    {
                        echo '<li class="arrow"><a href="index.php?c=search&search=' . $search . '&p=' . $i . '">' . $i . '</a></li>';
                    }
                    else
                    {
                        echo '<li class="arrow"><a href="index.php?c=category&ct=' . $categoryID . '&p=' . $i . '">' . $i . '</a></li>';
                    }

                }
            }

            if ($totalOfPage != $currentPage) {
                {
                    if (empty($search) == false) {
                        echo '<li ><a href="index.php?c=search&search=' . $search . '&p=' . ($currentPage + 1) . '"><i  class="next"> </i></a></li>';
                    } else {
                        echo '<li ><a href="index.php?c=category&ct=' . $categoryID . '&p=' . ($currentPage + 1) . '"><i  class="next"> </i></a></li>';
                    }
                }
            }
        }

    ?>
</ul>