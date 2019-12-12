extends RichTextLabel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var a= 1

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var page=0
var dialogo=["Você provavelmente já ouviu falar sobre dislexia, certo? Existem muitos conceitos difundidos, porém temos que tomar cuidado, pois o diagnóstico nem sempre é fácil de ser realizado, e as técnicas para ensinar crianças com dislexia são as mais variadas.","Muitos especialistas divergem sobre os termos corretos utilizados no assunto, e agora você terá a oportunidade de conhecer os mais utilizados.","As informações disponíveis sobre dislexia podem, às vezes, parecer bem confusas. O objetivo deste módulo é fornecer uma introdução clara sobre o assunto que levará a um maior nível de conhecimento e te permitirá apoiar indivíduos disléxicos de forma efetiva."]
func _ready():
	set_bbcode(dialogo[page])
	
	
	
	set_visible_characters(0)
	set_process_input(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		if get_visible_characters() > get_total_character_count():
			if page < dialogo.size()-1:
				page+=1
				print(page)
				if(page==3):
					get_parent().get_node("seguir").show()
				set_bbcode(dialogo[page])
				set_visible_characters(0)
		else:
			set_visible_characters(get_total_character_count())

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
	pass # Replace with function body.

func _on_seguir_pressed():
	pass # Replace with function body.
