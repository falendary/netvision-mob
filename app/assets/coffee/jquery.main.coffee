jQuery(document).ready(() ->
	# Каруселкьа
	jQuery('.slider').slick(
		arrows: false,
		dots: true
	)
	# Инициализация обсерверов (ныне ничем не отличается от обычного слайдера)
	jQuery('.observation').slick(
		arrows: false,
		dots: true
	)
	# Кнопка меню
	jQuery('.btn.btn-menu').bind('touchstart', ()->
		jQuery('.dropped-menu').toggleClass('active')
		if jQuery('.dropped-search').hasClass('active')
			jQuery('.dropped-search').toggleClass('active')
	)
	# Кнопка поиска
	jQuery('.btn.btn-search').bind('touchstart', ()->
		jQuery(this).toggleClass('active')
		jQuery('.dropped-search').toggleClass('active')
		if jQuery('.dropped-menu').hasClass('active')
			jQuery('.dropped-menu').toggleClass('active')
	)
	# Кнопочка стереть в форме поиска
	jQuery('.dropped-search input').on('keypress', ()->
		if !(jQuery(this).val() == '')
			console.log(jQuery(this).val())
			jQuery(this).parent().parent().find('.clearform').addClass('active')
			return
		else
			jQuery(this).parent().parent().find('.clearform').removeClass('active')
			return
	)
	# Кнопка стереть
	jQuery('.clearform').bind("touchstart", () ->
		jQuery(this).parent().find("input").val('')
		console.log('test')
		jQuery(this).removeClass('active')
	)
	# Логика для радиокнопок фильтра в магазине, в мобильной версии не работаю селекты ~ и + поэтому пришлось js писать
	jQuery('.shop-drop-down.radio').each(()->
		_parent = jQuery(this)
		_parent.find('label').on('touchstart', () ->
			_parent.find('label').removeClass('checked')
			return
		)
		return
	)
	# Тоже самое для селекто
	jQuery('.shop-drop-down label').bind('touchstart', () ->
		jQuery(this).toggleClass('checked')
		return
	)
	# Табы в карточке товара
	jQuery('.tab-control').bind('touchstart', () ->
		tab = jQuery(this).attr('href')
		jQuery(this).parent().parent().each(()->
			jQuery(this).find(".tab-control").removeClass('active')
			jQuery(this).find(".tab-panel").removeClass('active')
		)
		jQuery(this).addClass('active')
		jQuery(tab).addClass('active')
		return
	)
	return
)