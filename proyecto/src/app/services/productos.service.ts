import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class ProductosService {

  url:string="http://localhost:3000";
  url_get_all_productos=this.url;

  constructor(private http : HttpClient) { }

  get_productos(){
      return this.http.get(this.url_get_all_productos);
  }

}
