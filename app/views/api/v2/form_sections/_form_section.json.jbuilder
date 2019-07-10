form_hash = strip_i18n_suffix(form.as_json.compact)
fields = form.fields.map{ |f| strip_i18n_suffix(f.as_json.compact) }
module_ids = form.primero_modules.map(&:unique_id)
json.merge! form_hash.merge({ form_group_name: form.form_group_name_all, fields: fields, module_ids: module_ids }).compact
