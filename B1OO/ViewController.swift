//
//  ViewController.swift
//  B1OO
//
//  Created by 学生用 on 2020/09/29.
//

import UIKit

//どのようなタイル(カード)を一覧で表示するかを設定する
class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    //collectionViewのoutlet　関連付けをする
    @IBOutlet var collectionView: UICollectionView!
    
    //背景を宣言
    @IBOutlet var backgroundImage: UIImageView!
    //やることを表示するラベルを宣言
    @IBOutlet var text: UILabel!
    //個々のカードに飛ぶためのボタンを宣言
    @IBOutlet var individual: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //レイアウトを調整
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        collectionView.collectionViewLayout = layout
        
    }
    
    //1つのセクションのなかに表示するセル(要素)の数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //表示するセルの数
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //表示するセルを登録(さっき名前つけたやつ)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        
        //imageviewに画像を反映してみる
        //お手本がタグを使ってインスタンスを作ってるのでやってみる
        let photoImageView = cell.contentView.viewWithTag(1) as! UIImageView
        let photoImage = UIImage(named:  "checked")
        photoImageView.image = photoImage
        
        //背景色は変えられる
//        cell.backgroundColor = .red
        
        //ここまでのセルの設定を返してる？
        return cell
    }
    
    //セルの大きさや隙間を調整する
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) ->CGSize{
        
        //横方向のスペースを調整
        let horizontalSpace : CGFloat = 10
        let cellSize : CGFloat = self.view.bounds.width / 4 - horizontalSpace
        
        //正方形にするためにwidthとheightを同じにしている
        return CGSize(width: cellSize, height: cellSize)
    }

}

