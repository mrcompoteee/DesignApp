//
//  ChartViewController.swift
//  DesignApp
//
//  Created by Maksim Shershun on 4/5/19.
//  Copyright © 2019 Maksim Shershun. All rights reserved.
//

import UIKit

class ChartViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var userStatisticsView: UIView!
    @IBOutlet weak var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        setupCollectionView()
        setupStatisticsView()
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1843137255, alpha: 1)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    private func setupStatisticsView() {
        userStatisticsView.layer.cornerRadius = 13
        
        let headerView = Bundle.main.loadNibNamed(CircleProgressBar.identifier, owner:
            self, options: nil)?.first as? CircleProgressBar
        
        progressBar.addSubview(headerView!)
    }
    
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let nibName = UINib(nibName: YearStatictics.identifier, bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: YearStatictics.identifier)
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
}

extension ChartViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: YearStatictics.identifier, for: indexPath) as! YearStatictics
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 19
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 19
    }
}
