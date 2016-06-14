	<?php
		class Admins extends Model
		{
			function AddBook($bookName,$description,$status,$category,$image,$image1,$bookCost,$bookOldCost)
			{
				//Câu Select
				$sql = "INSERT INTO books (BOOK_NAME,BOOK_DESCRIPTION,STATUS,CATEGORY_ID,BOOK_IMAGE,BOOK_IMAGE_1,BOOK_COST,BOOK_COST_OLD,DATE,CURRENCY) VALUES ('$bookName','$description','$status',$category,'$image','$image1',$bookCost,$bookOldCost,now(),' VNĐ') ";
				//Thực thi câu lệnh
				$runSql = $this->db->ExeQuery($sql);
				//Trả về dữ liệu
				return $runSql;
			}

			function UpdateBookNo()
			{
				//Câu Select
				$sql = "UPDATE books SET BOOK_NO=BOOK_ID";
				//Thực thi câu lệnh
				$runSql = $this->db->ExeQuery($sql);
				//Trả về dữ liệu
				return $runSql;
			}

			function UpdateBookInfo($bookID,$bookName,$description,$status,$category,$image,$image1,$bookCost,$bookOldCost)
			{
				//Câu Select
				$sql = "UPDATE books SET BOOK_NAME = '$bookName',BOOK_DESCRIPTION = '$description',STATUS = '$status',CATEGORY_ID = $category,BOOK_IMAGE = '$image',BOOK_IMAGE_1 = '$image1',BOOK_COST = $bookCost,BOOK_COST_OLD = $bookOldCost,DATE= now(),CURRENCY = ' VNĐ' WHERE BOOK_ID=$bookID";
				//Thực thi câu lệnh
				$runSql = $this->db->ExeQuery($sql);
				//Trả về dữ liệu
				return $runSql;
			}
		}
	?>