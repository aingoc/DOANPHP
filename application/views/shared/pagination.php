<ul class="start">
    <?php
        echo '<li ><a href="index.php?c=category&ct='.$categoryID[0].'&p='.($currentPage[0]-1).'"><i class="back"></i></a></li>';

        for($i = 1 ; $i <= $totalOfPage; $i++)
        {
            if($i == $currentPage[0])
            {
                echo '<li><span>'.$i.'</span></li>';
            }
            else
            {
                echo '<li class="arrow"><a href="index.php?c=category&ct='.$categoryID[0].'&p='.$i.'">'.$i.'</a></li>';
            }
        }
        echo '<li ><a href="index.php?c=category&ct='.$categoryID[0].'&p='.($currentPage[0]+1).'"><i  class="next"> </i></a></li>';
    ?>
</ul>