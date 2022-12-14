<?php include_once("inc_header.php") ?>
<!-- untuk home -->
<section id="home">
    <img src="<?php echo ambil_gambar('18') ?>" />
    <div class="kolom">
        <p class="deskripsi">
            <?php echo ambil_kutipan('18') ?>
        </p>
        <h2>
            <?php echo ambil_judul('18') ?>
        </h2>
        <?php echo maximum_kata(ambil_isi('18'), 30) ?>
        <p><a href="<?php echo buat_link_halaman('18') ?>" class="tbl-pink">Gali Lebih Dalam ~</a></p>
    </div>
</section>

<!-- untuk pendidikan -->
<section id="courses">
    <div class="kolom">
        <p class="deskripsi">
            <?php echo ambil_kutipan('22') ?>
        </p>
        <h2>
            <?php echo ambil_judul('22') ?>
        </h2>
        <?php echo maximum_kata(ambil_isi('22'), 30) ?>
        <p><a href="<?php echo buat_link_halaman('22') ?>" class="tbl-biru">Info Lebih Detail</a></p>
    </div>
    <img src="<?php echo ambil_gambar('22') ?>" />
</section>

<!-- untuk colors -->
<section id="tutors">
    <div class="tengah">
        <div class="kolom">
            <p class="deskripsi">My Favorite</p>
            <h2>COLOR</h2>
        </div>

        <div class="tutor-list">
            <?php
                    $sql1 = "select * from colors order by id desc";
                    $q1 = mysqli_query($koneksi, $sql1);
                    while ($r1 = mysqli_fetch_array($q1)) {
                    ?>
            <div class="kartu-tutor">
                <a href="<?php echo buat_link_colors($r1['id'])?>">
                <img src="<?php echo url_dasar()."/gambar/".colors_foto($r1['id'])?>" />
                <p><?php echo $r1['nama']?></p>
                </a>
            </div>
            <?php
                    }
                        ?>

        </div>
    </div>
</section>

<!-- untuk desain -->
<section id="partners">
    <div class="tengah">
        <div class="kolom">
            <h2>Desain</h2>
            <p>Beberapa Desain Yang Pernah Saya Buat</p>
        </div>

        <div class="partner-list">
            <?php
            $sql1 = "select * from desain order by id asc";
            $q1 = mysqli_query($koneksi, $sql1);
            while($r1 = mysqli_fetch_assoc($q1)){
                ?>
                <div class="kartu-partner">
                    <a href="<?php echo buat_link_desain($r1['id']) ?> ">
                <img src="<?php echo url_dasar()."/gambar/".desain_foto($r1['id'])?>" />
            </a>
            </div>
                <?php
            }
            ?>



        </div>
    </div>
</section>
<?php include_once("inc_footer.php") ?>