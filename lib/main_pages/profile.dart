import 'package:diploma_work/widgets/recommendation_widget.dart';
import 'package:diploma_work/widgets/weather_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildHeader(context),
                _buildInfoTile('dilyara.abd', 'Username'),
                _buildInfoTile('dilyara13.056@gmail.com', 'E-mail'),
                _buildInfoTile('Astana', 'City'),
                _buildInfoTile('Female', 'Gender'),
              ],
            ),
          ),
          _buildExitButton(context),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildHeader(BuildContext context) {
    // Вместо 'URL_TO_AVATAR' нужно использовать реальный URL изображения
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRYVFRIYGBgYGBoYGBgYGBgYGBgYGhgZGRgaGBgcIy4lHB4rIRgYJjgmKy8xNTU1GiQ7Qjs0Py40NTEBDAwMEA8QHxISHzQrIyQ0NDQ0NDE0MTQxNTQ2NDQ0NDQ1NDQ0NDQ3NDQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NP/AABEIAMIBBAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAIDBQYBB//EAEkQAAIBAgMDCAcFBgIIBwAAAAECAAMRBBIhBTFBIjJRYXFygcEGEzORobGyI0JSksIUNGJzgtEkogcVFkOz0uHwRFODk8Pi8f/EABoBAAIDAQEAAAAAAAAAAAAAAAACAQMEBQb/xAAuEQACAQIFAQgBBAMAAAAAAAAAAQIDEQQSITFBMgUiM1FhcYGRQhMUUrEjQ6H/2gAMAwEAAhEDEQA/ANY8hMLqLIGWY7kEbTgkjRiCQKdyxhWT2jWECbFFtgcpezzjdijlv2D5CP21zl7D843YnOfsHyEI7sbgtMKhdmTOqMp5pQm6ncwOcX48OBhg2a3GoPBLfqlfjEIs685d9t5XiB1jeOzrlns/HBwATrbQ8GH95yMdPEUpXi9H6F9OnGUb223I32WTb7TS4PMF9CCLG+m6WM7OTjVa9SrbO72HjFR2OxRRSkkU5OxSQORRRQAUUUUAFI8RSzjKSQONuMkia9tN/Xugm07olAB2QhbNdwbW0Ybr36I47OpKNc3i7/3kGKxFUbxlHSo098AdydSST1zoU/1mutpejLFRzd6QbWXDr+I9jvb33lWGDMWRSqHmhmZif4jm3dQjHOfX7gP5yP0j49m+XWdjB0ZxWaTb92ZK2VPLH7KrF8897ylfUHLpd/8ASIfiuc3e8oFU59Lv+Qm6PUV8F+qwIfvKd+n5Syld/wCJXvp8hGFjuR4bn/1r+mepbO9lT7i/SJ5bhef/AFr+meqYAfZU+4v0ibF0opkryZNaditFAixmXEhKwmoJC0wF5C6yNBrJXjAIASCMePMa0AKTHoajrkBewNymoBvuLbh75PsvZddWZiiqGtoz6/5Q3zkG01yOClluCSLcljfeR09YsY3DbRuSpujC3E5STus3kbGY8RKvG+S1va5opQhJWb1LwbOc86oB3E197E/KOobHppaxc2NxdyLa30C2FuqBJi3H3z46/OTJtN+IU+FvlORWeJn1Sv8A8NCoOOxbxRlB2K3Zcp6L3j5zWrOzEasKKKKQAooopJBwxTpE5CzJFFFFIIOxtViFJAuQL2nROyV6klem1FO9D8DBsVQo1BYOUPGwsD1MDw7CJHjqORyOB1HYYNOlTpqylFtGlU01oS1cI6jmh1H3k5QHam8eF5ArAjTUR6sRuNuzSNxLg8pzY7s+5uoX+92G86VHFTWktfVbmWphOU/sp8WeW3e8oHU59Lv+QhNViXa/SN4yk6cV4f8AeggdRrPSP8X6Z0YO7uZmraGjDXa3RAm/eF76fIQrBJpfpgz/ALyvfp/IRuRI7keGH2n9a/pnqmz/AGVPuJ9InleG9oO+v6Z6rs8fZU+4n0ibF0oT8mSxR0ULhYzriDPCXEgZZhLAV4lkjpGBYEDo0mOYSMwAqNrjlL2H5iB7PID1M1rZRe9rWtxvDdq717D5QHAU1Z3DKCLLoQCNBe8ZE8BAY3HqgSvQ2iAfwsdfcCOyWmFdE5TXZuAA3dvXKtKYdgy5gg3cprOenLe2Xo6eyFTi4pKUmv6OnRV4K9/ku8Ni8ys7AKoj8LiQ+aw3G3h0zL7U2ulFBnbTXIg5ztvNh58Jkau1MTiX9UhKh9BTQ2BA/G28gC9+HVFwvY88TdrReb2M9epClo9+EehbS9KsLRuGq52H3KfLa/QSOSD2kSgf02r1WKYTBs56SHqHxRBYe+c2H6JUAM1RhVZWylRcU0Yb1tvbx06p6P6PKqoyKoUK2gAAABHADsnZpdj4SiryTm/Xb6MTnUlzY89XZ+262p+xXrakgHuzOJH/ALJ41tam0lHUtTEP8gBPTNs1LJb8RA8N5mCxWI9Y1UvUKYejdXy6M7jeCRrlG6w33E3QpUoruwivZIVxvu2/krh6H1bm20zfqFW/1xlPYeNXlUdpB7EjV6trjQi1nFxCnoUwuf8AYaiJa+dXs6j8WQNf3y92bTprTQUrZLXU9N95J4npjuMXvFP3SDKuL/ZnRjdrUedTSuo42Um3VkKt/lkuF9PkByYjDvTbjl5Vuso2Vh8ZpnYAEncASewSj24tKtSD2DANbUai+8a7uEy1ezsJV6qaXqtBlKcdn9hFHbdJ3L0KqtcAldx3W5SGxHuh2LxIdAykhlOovrrPJsfhgjqQpW4zAE3KkEg2b3HxhuD9JqtK2f7RN1mPLA6n4+N+2Y63YPdU6Lvbh7l9PGRzKNRWa5R6DVrswAY3tuPGD1aiqLsbDTU7hfTU8ILsvalPEJnpte2jAizKehh/2IXUQMCpFwQQewzluDg8sla3B04tON4kJrFuYNPxtcL4De3wHXOpSANySzfiO/wG4eEWHclbMeUpyt1kbj4gg+MlE6lGlBRuvs5darOTaf0U2M57dvlAay8ukP4vKGY48p+0/KCuftKXe8hL47icGioCwtAav7wO+nyEs0lZU/eB30+QhyQtxmFHL/8AUX9M9XwXs07i/SJ5Tghyx/MX5rPVsD7NO4v0ibfxQi62TRRRSBrGdMiaSyOpMRJC0ZaOMQgQRNGGTMJGRACn2kvKF+IPzErsPTu73ICXAJvbOQNVv+Hp93TLXanOTsPlAtl4dPWPyF3D7o46wlGUotRdiyElF3auELiE3BgT0Lyj7lvIMVtFEpPWa+Vb8CCSDlsAeJOkscfXyIbMFLEKpJAAJ469AufCZX0xpn9k5CtkRkJNiFy80annasN15h/axzxjdu71NccS3Bt2VtjIVMa9eo9VzcnQDgi30VeofGX3obVC4pWY2GSpc9FlufgDMphHse2Xuw6wTE0Wa2XOFa+6zgob9XKnrIQjGjlitEcWcm6maR6xTK2zLazcq4434y42G/LZekX9x/6ymSot2QEXQDMo+6Dujk2ilJwxqILcGdRfpExM1BnpftEUkzHXKui/idjZR8JjcEhy1sNVdVdyKiutipY5Tp2Mm7jrLjbG28LVJNV0IuCBZmsQLaEDrPvlJU2js0XGVdd+UZfMGCTBstlqVaZNTE1EVFWwRAbOxscxzaltLADpMd6PUitBARa5dgv4VZywHx+Mz1PbGz0YFabEjdchh7i5BlgPTTDdD+5f+aNll5C5l5lvtarlpN18keO/4XlBmtSI/E/0rr9Qg+0vSalVygEqo15RXU+Bg/8ArFGAHrFst7cN5udd0GmtyU09il9ICc6XAtZsvSRyL38ZR41twlvtfEZ3XS1k1FwbEkneOoLKjGAWB4zZTX+Iyy6y29BnIxNgdGpvmHA2KkX7CfjN41Z85UICAAedYkG40Frbx0zD+goIrVGy5rU7AAgNYsLkA6Hmjjxm1esM6aMCcykFWGhGYG+46qBv4zzmOhmxGq0sdWjUy0dHqLOc4Pq3W4Ia4BGmqm6kjpHiIUsTboxTv7Y8IqMcqM8pOUrsp8bz37TBH9pR7xhmJ579pgb+1o9p8o0dyeDS0zK9/wB5HfX6RLGmJXH95HeX6RJW4sdxYHnj+YvzWeqYLmJ3F+kTyvAc8fzB81nqmC5idxfpE2fihF1MmiiikFhnDI6ke0iaYgISZ0GcecgQcqTgGkdEBpACp2qNV8fKD7J9o/YvyhO1V1Tx8oNsn2j9iyVsHBbW1lL6aM4wVbKL3ChuNkLLnPuvLsCMxBXI2cXXKcw6VtqPdCLtJMix4dTGo14yxp8s5UBc9Cgsfcs21P0KwqUyc7vVo5WqKWBU2szKUA3WDDQ7x4TS7BwqKtTLTVQHsMqgCwpodw7TNz7RUO7FXuWRwLnrJ2PP6eycdU+5UPfcA9XON51PR2rmCvUCE7xy3Ze1Da46xeegYt8RWr/suH+zyqr1K5AJCuWCimDpfktdje3QZktoYRMwBxNW7MQjPVdmcjiFJyddsukI1a1XWFl8BUhRpO0rv5CMN6BKwDHEAg7iirY9h1hSegFLjWqeGT/lndg4TEoQVqEhr5WZbo5UgOlReDaghwRccBax2CE2F7XtrY3F+o6TPPEV4vK2aqVGhOOaKRlB6B4f8dQ+K+Qjv9hMN+J/zTVyvx+z2qmzVGCcUXQN323nsFh2yv8AcVf5Mt/b0v4oxeO9HsKtwlR+tswKjui138NOuCUPR/DVGyJilV91nqUixPUii57DaXW1NiZcjVkWz5ylMi6oiFQGKnRnYte5vYWA6S/YeAoYh0pVKKlKgYBWRVZGCswI0uOafeDpNUKdeUc7m/YwVKlGM8qiivq+gDgcisD2p/8AaUO0fQ3FIwF0bNfLYld2/nC3HpnomxMLVoVsRhmqF6VIp6tmOZlLgsaZb7wUZSCdQGAk+3zlRH/C7Hw9W/8AYSmeLrRTV72NMcLRnHMlYwvofsatRzV6tMorgIhup+9qSAdASFAPGawQpKLFSmYinTQIRpZyE5ZPHQkWtuKGAUmJAJ32F+22spc5TeaW5nrUlTtYleMJnWkZaCKSrxPOftPzgb+1o9p8oZi+e3b/AHgb+2o9rfphHqLODSqZXg/4gd4fTDVMAX94Hev/AJJK3FjuOwB5a/zB9QnqmC5idxfpE8owB5afzB9QnrOE5idxfpE2/ihF1Mkiiiilhm2kLGTNImmICJxGESV4y0BWJRHKs4I6BKKnbA5n9XlBNlj7R+6sN2x9z+rygezee/dWMtieC1USLEjRejPTv2esS8mEjrJmRlva4Iv0E7jFIi7NMiqKlJwVLEqbPfUFahzNfpIJDe/phOxsK1NHRh/vGy9aAKqH3KJWYlyxY5eetNyOkCy1EHWMhH9QmgpVVdQym4OoMVnWWuoRh8X6u75C+m5bZjY8L2vx0vMrXw2HLhqbuVDZlR8LiWZD+EjJYgbtSNPfNFUqqvONr7hxJ6ABqT2RtOoWvyGUcC1hf+m9x42ltKvKnsU1cNGq7sfg69MUhRTNdSXbOoVjmJJIS91FzYDoEdGrTAuQALm56z1x0rnNzd2W06ahHKhRGKKIOD7Qq069JFKO5TVWplFdTuIyuQLEWuD0QXZj+pIK4Wu7gEI1VsOiUw3OtkdmF+JsT2SwFMXvYX6bRj576FbdBBv7wfKXqvNRyp6GeWFpylmtqT1HzMWO8m5t7vIQHaeFNRFUf+YhbuBuWPFbjxkvrGHOTxU5vhYH3Axr1g4KIwzFSQfwm4Go4HX4Sl6l6SSsUTsbVLm+jobfeNSsFze5XPvnVEkxNBUyIGzNcO/QAqlUW3AcokX10JjAY6OfiZXlbyE0jaSNI4xmKnEnlt2+Zgbj7Wl2nyhdbnt2n5mDv7Sl3j8hIj1FnBfBoEPb+P6DDAYEPbHtP0GSLHcWAHLXvj6xPWcLzE7i/ITyfZ/PXv8A6xPV8JzE7i/SJtfShI9TJYooopYZxhIGk7SFpjYEbRscwiAkECETmdjKm6BJXbVN8vVfygWzue3YIbtIc3x8oLgB9o3dHnGQcFopnQZy9tZxDpFIIzSQhkc5OWWpvuILakKTpfMW5PEGPpq1JkVmFnzroLDPoymx4kB5LYEWIBB3g6g9sp9pI4ZVWo2S2dEuCodCDbMRmsQd17WBiyaSuzbQrXtFmhp0QpvvY72OrHqv0dW6cpVgxOW5A+990noU8e0aQXDt65VJPItqvFj/AB9A6uJvfohYqDNkA4XNrWUcL9vAdUg1kkir1lRSzsABvJktpDWqpazuo7WA84ANq7QQ3bNYHqPwklGqrjMpuJXBad9KqkdRBPvENXEIBYBrdSOfksGGnARI6iE7mKkdQIPUQeHujP2gnm03PWQEA7c1j7gZK4axykA8Li48eqAEXrivPFv4hzfH8Pjp1yir45/XvkYBWGS+W7fZi5Kkmw1qAag7paYzHBUbMLMBYrv39HSDuB65RUadnF+cqEt3qj3b4oYrlaSXmVVpOMG0EKtt3HUkm5J6STqTEBEROgS85Qm3SOSMIy0AKerzm7x+Zg7+0pd4+UIr89u0/ODt7Sl3j5SI9RZwXoEDQfantP0GHBYGntT2t9DSRY7jdm89f5g+oT1fCcxO4v0ieU7MH2ifzB9Qnq+G5idxfkJseyEj1MlnIopBYZ1xIWhLrIQsyNEEeWcYSUyJoWsSNjWjjGtugBX7RHN8fKDYH2r90ecKx25fHygmB9q3cHnJWwcFmVvOzgMRiEDwIDtReRmA1Qh9OgAhh+Ut8IapucoDM1r2RWY23XIUGw6zJP8AVFR87VgUSwCor5WN95ZlYEHW2WTkzJomLs00UmHxXqmLfcbeeCsenoU9PA9svsMFy8k3ubk8Sx3kzOVl9VVGHy3XK2VjrydMgN9+mYdqdc6uJaiMyXZAQClxdbkDk34C/NPgRumKE3F5JfB1oyUldGkq0Ea2ZFa27MoNuy8ciKNygdgA+UEwW0Ue9jZhoQdCD0EHUHqMNmkkV4oopACkdWoFFzG4jEKgJY8L/wDXqEzmPxL1GThTZiCDe7jI7DTgt1G/U9m8bsm/Ik5jcYGJqvzE5ulyxvbMOrXTxPRO02s1RyCFDKmcg5NFBtm3b3I7YThcOKlTIbZVQsw7wKJ4auf6RD/RjmU1qLa6escHfd3bKpHTZTK6EXOX6jMmJmmspW2nQJoK+zqVYK1BcjuC6j7mVTbM6jm5rjm63bcbGVWLwT0mC1FAuCVKnMrW32OmvUQJscWjA0CuIxhJyJGyxSChxB5bd4/OQMftKPePlCMRz27zfODN7Sj3j5SFuWcGhUwID7X830NC1gg9qe1voaHIsdzmyvap/MH1Cer4fmJ3V+Qnk+y/ap/MH1CesYfmJ3V+Qm17IWPUySKKckDlK6yA6QgnSDvKXECJo0iOMRiMCJpwidacIigAbQHN8fKB4H2rd1fOG7Q+74+UCwntW7i+cZLQCyEJ2fgHq2Ycmnc3f7zWOoQdoIzHwvAazWViOCsfcDNlhKWSmiDTKiqOqygSYRTeoqK44ijRS9IA5mW5uzE5mCAszG5IvuO7WVe2q5JVidTydN1s6N+k+8zmLzL+0BwoKvmGXcQwRwwB3XYtp03jNroSEP4WJPZkYfMiEm72LYpWFtXC51FgM9yFY7xYFwL9BKC8oMTgSmG9ZlK50c1FO9HYsUc9G8KexT0zU1zyk63I/wAjnyguIxyerBcZs6GyaEsCNRbdl6SdJVKnGW5bCUk9CixNDOFddGsCCNDYi+/y3R2F2w6aOM46RYMO1f7e6S4IfZp3E+kRmIwobUaH4GB0LaXQcu3qXEkdRVh8xI8Rt9LchWY9hHxaw+fZKlsO4+6fCT0MHxb3f3MLIjU4maoQ9Q8m4suuXNfTvG//AOCTYrDs5pojZSzkZvwjI92F95AvaOfV1UblGY9puEH1HwEWLLAK6Egowa4AOmobTjyWbSDSejJknldtx/o3nzuzrlZsxCkWIUJQsD4sx/qlvgmzFn/ElM/5SfOBYPEhqoYgKWV7m91dj6sLkPYm469u+T7JsqG5sFSncnQACkhuffGjFJWRzpqSfe3CNl1hTRKoufsaa233AFwAOklvlL+thVr0wtVRrryTco3Aq3SOnt3iUvo/gs6U2q0yESnTCo4sGewzMVbeByQLjeSegzSiw0GnQOrsl8Iu2pTJ3MBlIup3qzI3eRipNu0SN4ftJbYiuP4wR2MiEn35oE4lD0YpnsRz37zfOD/7yj3j5QrFc9+8fKCr7Sj3j5SI9Q3BoVgP+98W+hpYAQBR9r4t9DQ5FW5Hs0/aJ/MH1Ces4fmJ3V+QnlGy/aL/ADB9Qnq+H5id1fkJufShI9THxRRRSwpTIGk7SBor2IGRrR0aZU0SMMRE7liYyFECv2luXx8oBg/anuL82h+09y+PlAMF7U9wfNoLYkMxQ5D9ake8Wm39Zy8luF78NSRb4GY4C5UWvd0X8zqvnNantHPDIg8buT8xHpbCoqdvbKLBqlIEuzU/WLc2dFcZrA6BgtyLWvu6IHiCHR1B1ykEG6lTb7wOq+Mv0xBNVkG5EBY/xsdB4LY/1iCbb2KuIyktlZdxtmUjoZLjMAdRrcG9t5kzjfVDxfmZrHbQLsnqTorFi5F1PIdbIPvHlXvu04wKlhVVCgvqLEk3Y+J7Zx65DMMmYKxUMpWzWNsyhiDb/vXfOjFLxuveFh+bm/GZHON7XOrToZY5kt+SZVsABuGnhFOzhklgpx3Cgk7gLmIMDxEZUS5W5AAN7Hifu+7f22gBzDoQCW5zHMeroHgLDwk0dQpM5IRWa2/KCQOotuB6ryzwno/UcXZhT6Fyhn7TZrL2a+G6MoSexVKrCO7KdgDySL3HNtckd0bxLXYmw6lwzNlpZkb1bqzO2QAKNSMq6KbG/NGgE0OzcElEFVN20Z2NszXvYm3DQgDcLQ2Xxp21ZhrV8+iWgyvTVlZW3MLHx039Mq2rH/DOTc52puek5WDH81P4yzr81uw/DWU2Ie9KoB9zEKfB3Ryfc7R2Zys24lsS/wDFTpkddmcH9PvgDy19MHVETEX0RbtbW6MQG+at/RKPC4pKiB0YMp4j4gjgeoyiUXe5EtykxI5b94+UGX2lHvHyhWKHLftMFHtKPePlK49Q/BpCJXj2v9Tf8NpZZJVVGAqkncGPxQj5kQ5FQtl+0T+Yv1Cer4fmL3V+QnkFMsLmzDUm4vprcG4ljhtu100Wq1hwvcToJZoqzKr5ZO56jaKefJ6X4i3OX8oikZGN+ojTtITJjIX3xHsMMInCI4zhldiSNjGmPYRpEEABtQaL2nygOB9qe4vzaHbU3L2mYrbfpAabslEjOVCs+8JvuF6W18JMKcpyyxIlNRV2bTZmLSpjEw6m7IprVCNy5CoVT/FmdT1ATSms3rFsdGqZT1qtKobe8LPFPRDbf7LikrNqjApUO85HIJfrIYK3XYz2LZGJSqyMlRXQI75lYMCWKIpuOoP75dVouk0hac8yuGYNSKuIv+JLdhpp5gx22cQadCowNmCkL3m5Kf5mEh2liAEfk6irSQ9d2pn5PBvS57UUX8dRB+UM/wCgSmpLLBsvpRzTjHzaMmqgAAbgLDsEVopHiHyox6FJ9wJnn92eqekQHC4dSwN2vlZmTM+UBmBQ5b21AbdpDvUJ+BfyiDYC3KAGiKiC4Ctopblgfe5fyhhmjESefKuLGbCxTppvkZ6hPwL+UTX+jezqYw9NygZmQEs4zNY6gXa9ha2kyZ0m92UtqFIdFNPpE0YBXkzH2m7KKQ6rVCNSRVADuV0FgOQzXAHWAPGOGIu4A3ZmQ3/EFDLbp0uYPtXfRPRWpj8zATlVgHfQcmpTf/3B6on4NOmcYKqWzrfcysp67WYD3Z5zAE+rS+8KFPavJPxE5jtMjfhqJ/nJpn4OZJh6WVbXvynb8zs1vDNbwkgSkTOUKmV6yH7wRvhkH/D+M0c8t9OPSr9mfJQKtWdSpvr6tc11Yji2rWB7YsouTSRN0ldld6dekq+rfAoSXzlXNuSiZ86rfiSCo03AGZvYm12wzk5SyPYOoNjpuZeF/nKlEYsXdizsSzE6kk6kk9MvNhbAfE3IbIgOXNlzszAXIRbgaXFySALjjOhCjCFJqfO5jlKUpd0vBikqZ3Q3Uk9u7cRwPVIxpUo94+UHxfo7Xwp9YjF1OjqUCsR1KHZWI1OjZuqcw+Kz1KPJtyjYg3BuNOw6TlVKcYy7rujXHM46rY1T1DK/EUXJLIRcm5DX+BEOyxFJVoJdoqCzjnUj2qQ39jOHGJ94le+D+oWlu1PScahfeIacDZmVgdDrmX3/ANtIoU+zUJv6tfcIpOaXmwvHyN2YxxJDOMJrJB2E5JnWRNFaAbONHWmP9O9uGmgoUyQ7rd2G9UuRYdBaxHYDJhBzllQspKKuyt9L/SYMTRoNzSQ9QdO4qh+be6YwRCKdelRjTjZGGc3J3YpZ+ifpA+z8QaqpnpuAtZBoSoNwyn8Sm+/fcjrFZORpwU1ZhCbi7o9sw216eKp+tosWR8VSAJUqbr+zqwIO4g3hnpit0onoq/8AxVBPE9ibZr4Vr0mumdHak3McoysD/C3JtccOmev19uUMbgzUouLoyM6EgOhBAZXXqDNruPCcfFUJRi/Jo6WEqxdSL9UUsgxvMfukceItw1k8gxo5D8eSflPOQ6l7nqp9D9jmHBzVLi3LHBhfkJqQ2oJ64RB6DDNUym/LB3MLXRNLNqIRLMR4jKsL4SG1eaew/KeiYXmJ3V+kTzxxcEdRnoGzHzUaTdNND70E2dn8mDtT8fkj2pTJVLcKtI+AqJf4SDaFM5qhG9sPYd+mzsvxeWLOu4sPEiVG1dv4akympiaS5M2dTUTMBb8N736p0jkB+0GvRdl15BdesqM6/ECM2xtahhqbVa9QIg3X3seCou9mPQJ5tjf9KqJhkTD0naqKaoXqABEYKATYElzfhYDr4TzSu9WuxqVajux1LuSzG+/fuHVul0KMpMrlNRNr6U/6SquKVqGGpGijaM5a9Vl6Bl0QHjYk9cxtGjbU6k7zH06YXdJJvpUFFepknUcgrZdNXR8wB5XRZgBe1m3jW+gtum/9EKypQqaWFFbdo5b38bkf0zznAVMlS3BvP/rb4zVbKxORnW9hURqZ6ASDkP5tOxjOXXlONRqT0OlRjCVNNLU29emzhwLsRyWJc2ZhbMFS2WwOmuum8b5hMfQyOSugJup/C4N/nrNkMeVpq62s1Y5ydbK5ZydONiJXbcwYZ6qbuSKo/hvmv9FRu2VSjdDRdmSbPxIqIr8dzDoYbx5jqIhhQTJ+j2KenUyuRZzkNuDgkKT13uviJsGWZ2rFco2ZBl3iPIFp0pERIEOWiiigBppwzsU3olDGkJiikMDjTyf04P8AjanYn/DEUUvwvWUV+koTEIop1DIKKKKACguNNtRobHUaH3zkUrrdDHpdSPVMAxNNCTckLcnUnTpjsXzH7jfSYop4d+J8nuf9fwBbI3t1lSes5RqZZRRSzE+IyvB+ChLvmy2Ef8HQ/lp8pyKX4DdmPtTaJ476dbWxCVagTEVVGui1HA9wMxb7yeJLXMUU7mH2OFW4J8MIbFFOlT2MUtxRRRRxRlTh2+U0B1Bvr9lUPiKZse0RRTkY7xEdLCeGzX4b92rdS0yOo3OvwHuh1IaeFQeApaDwuffFFM5YYvaPPq9oPjlXWbtN0UUokNU2QoyKKKUDIooowH//2Q=='),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'dilyara.abd',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Astana',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildInfoTile(String info, String title) {
    return ListTile(
      title: Text(title),
      subtitle: Text(info),
      trailing: Icon(Icons.edit),
      onTap: () {
        // TODO: Add action to edit information
      },
    );
  }

  Widget _buildExitButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          // TODO: Add logic to sign out from account
        },
        child: Text('EXIT'),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade900,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/weather_icon.png'),
            iconSize: 28,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>WeatherWidget()),//те AnotherPage на реальный класс страницы
              );//  P                 // Действие при нажатии на первую кнопку
            },
          ),
          IconButton(
            icon: Image.asset('assets/images/shirt_icon.png'),
            iconSize: 28,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>RecommendationPage()),//те AnotherPage на реальный класс страницы
              );//  P              // Действие при нажатии на вторую кнопку
            },
          ),
          IconButton(
            icon: Image.asset('assets/images/profile_icon.png'),
            iconSize: 28,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()), // Замените AnotherPage на реальный класс страницы
              );//  P
            },
          ),
        ],
      ),
    );
  }
}
