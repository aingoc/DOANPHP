	<?php
		class Books extends Model
		{
			function SelectNewBooks($position,$number)
			{
				//Câu Select
				$sql = "SELECT * FROM ".$this->className." WHERE STATUS = 'NEW' ORDER BY DATE DESC LIMIT $position,$number ";

				//Thực thi câu lệnh
				$runSql = $this->db->QueryResult($sql);

				//Trả về dữ liệu
				return $runSql->fetchAll(PDO::FETCH_CLASS);
			}

			function SelectHotBooks($position,$number)
			{
				//Câu Select
				$sql = "SELECT * FROM ".$this->className." WHERE STATUS = 'HOT' ORDER BY RAND() LIMIT $position,$number ";

				//Thực thi câu lệnh
				$runSql = $this->db->QueryResult($sql);

				//Trả về dữ liệu
				return $runSql->fetchAll(PDO::FETCH_CLASS);
			}

			function SelectBannerBooks($position,$number)
			{
				//Câu Select
				$sql = "SELECT * FROM ".$this->className." WHERE BOOK_IMAGE_1 != '' ORDER BY DATE DESC LIMIT $position,$number ";

				//Thực thi câu lệnh
				$runSql = $this->db->QueryResult($sql);

				//Trả về dữ liệu
				return $runSql->fetchAll(PDO::FETCH_CLASS);
			}
		}
	?>