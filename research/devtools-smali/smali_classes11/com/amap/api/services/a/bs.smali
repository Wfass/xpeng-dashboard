.class public Lcom/amap/api/services/a/bs;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# direct methods
.method public static N(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 4

    .line 1637
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1640
    :cond_0
    nop

    .line 1641
    nop

    .line 1642
    const-string v1, ",| "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1643
    array-length v1, p0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1644
    return-object v0

    .line 1646
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1647
    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1648
    new-instance p0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    return-object p0

    .line 1638
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static O(Ljava/lang/String;)Z
    .locals 1

    .line 1652
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1655
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1653
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static P(Ljava/lang/String;)Z
    .locals 1

    .line 1659
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1662
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1660
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static Q(Ljava/lang/String;)I
    .locals 3

    .line 1667
    nop

    .line 1668
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1672
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    goto :goto_0

    .line 1673
    :catch_0
    move-exception p0

    .line 1674
    const-string v1, "JSONHelper"

    const-string v2, "str2int"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    move p0, v0

    :goto_0
    return p0

    .line 1669
    :cond_1
    :goto_1
    return v0
.end method

.method public static R(Ljava/lang/String;)F
    .locals 3

    .line 1680
    nop

    .line 1681
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1685
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    goto :goto_0

    .line 1686
    :catch_0
    move-exception p0

    .line 1687
    const-string v1, "JSONHelper"

    const-string v2, "str2float"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    move p0, v0

    :goto_0
    return p0

    .line 1682
    :cond_1
    :goto_1
    return v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1597
    if-nez p0, :cond_0

    .line 1598
    const-string p0, ""

    return-object p0

    .line 1600
    :cond_0
    const-string v0, ""

    .line 1601
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1602
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1604
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/amap/api/services/core/PoiItem;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1765
    const-string v0, "deep_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1766
    invoke-static {v0}, Lcom/amap/api/services/a/bs;->h(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 1767
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1768
    invoke-static {p1}, Lcom/amap/api/services/a/bs;->h(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 1770
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/services/core/PoiItem;->j(Ljava/util/List;)V

    .line 1771
    return-void
.end method

.method public static a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 659
    new-instance v2, Lcom/amap/api/services/road/Crossroad;

    invoke-direct {v2}, Lcom/amap/api/services/road/Crossroad;-><init>()V

    .line 660
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 661
    if-nez v3, :cond_0

    .line 662
    goto :goto_1

    .line 664
    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setId(Ljava/lang/String;)V

    .line 665
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->ad(Ljava/lang/String;)V

    .line 666
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/a/bs;->R(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->a(F)V

    .line 668
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->d(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 669
    const-string v4, "first_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->aw(Ljava/lang/String;)V

    .line 670
    const-string v4, "first_name"

    .line 671
    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->ax(Ljava/lang/String;)V

    .line 672
    const-string v4, "second_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->ay(Ljava/lang/String;)V

    .line 673
    const-string v4, "second_name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/road/Crossroad;->az(Ljava/lang/String;)V

    .line 675
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->m(Ljava/util/List;)V

    .line 678
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 704
    const-string v0, "province"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->ak(Ljava/lang/String;)V

    .line 705
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->al(Ljava/lang/String;)V

    .line 706
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->Z(Ljava/lang/String;)V

    .line 707
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->Y(Ljava/lang/String;)V

    .line 708
    const-string v0, "district"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->am(Ljava/lang/String;)V

    .line 709
    const-string v0, "township"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->an(Ljava/lang/String;)V

    .line 711
    const-string v0, "neighborhood"

    .line 712
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 713
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->ao(Ljava/lang/String;)V

    .line 715
    const-string v0, "building"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 716
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->ap(Ljava/lang/String;)V

    .line 718
    new-instance v0, Lcom/amap/api/services/geocoder/StreetNumber;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/StreetNumber;-><init>()V

    .line 719
    const-string v1, "streetNumber"

    .line 720
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 721
    const-string v2, "street"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->at(Ljava/lang/String;)V

    .line 722
    const-string v2, "number"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setNumber(Ljava/lang/String;)V

    .line 723
    const-string v2, "location"

    .line 724
    invoke-static {v1, v2}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->f(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 725
    const-string v2, "direction"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->ad(Ljava/lang/String;)V

    .line 726
    const-string v2, "distance"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/bs;->R(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/StreetNumber;->a(F)V

    .line 728
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->a(Lcom/amap/api/services/geocoder/StreetNumber;)V

    .line 729
    invoke-static {p0}, Lcom/amap/api/services/a/bs;->g(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->n(Ljava/util/List;)V

    .line 730
    const-string v0, "towncode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->aq(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public static b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 684
    new-instance v2, Lcom/amap/api/services/geocoder/RegeocodeRoad;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/RegeocodeRoad;-><init>()V

    .line 685
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 686
    if-nez v3, :cond_0

    .line 687
    goto :goto_1

    .line 689
    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setId(Ljava/lang/String;)V

    .line 690
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setName(Ljava/lang/String;)V

    .line 691
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->e(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 693
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->ad(Ljava/lang/String;)V

    .line 695
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/bs;->R(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->a(F)V

    .line 697
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->k(Ljava/util/List;)V

    .line 700
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1609
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1610
    return-object v0

    .line 1612
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1613
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1614
    invoke-static {p0}, Lcom/amap/api/services/a/bs;->N(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p0

    return-object p0

    .line 1616
    :cond_1
    return-object v0
.end method

.method public static c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1748
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1749
    new-instance v2, Lcom/amap/api/services/geocoder/AoiItem;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/AoiItem;-><init>()V

    .line 1750
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1751
    if-nez v3, :cond_0

    .line 1752
    goto :goto_1

    .line 1754
    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setId(Ljava/lang/String;)V

    .line 1755
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setName(Ljava/lang/String;)V

    .line 1756
    const-string v4, "adcode"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->ai(Ljava/lang/String;)V

    .line 1757
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->c(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1758
    const-string v4, "area"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/bs;->R(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/AoiItem;->a(Ljava/lang/Float;)V

    .line 1759
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    :cond_1
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->o(Ljava/util/List;)V

    .line 1762
    return-void
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/IndoorData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1731
    const-string v0, ""

    .line 1732
    nop

    .line 1733
    const-string v1, ""

    .line 1734
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1735
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1736
    if-eqz p0, :cond_0

    const-string p1, "cpid"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "floor"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1737
    const-string p1, "cpid"

    invoke-static {p0, p1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    const-string p1, "floor"

    invoke-static {p0, p1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/services/a/bs;->Q(Ljava/lang/String;)I

    move-result p1

    .line 1739
    const-string v1, "truefloor"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1742
    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p0, Lcom/amap/api/services/poisearch/IndoorData;

    invoke-direct {p0, v0, p1, v1}, Lcom/amap/api/services/poisearch/IndoorData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public static d(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    if-nez p0, :cond_0

    .line 177
    return-object v0

    .line 179
    :cond_0
    const-string v1, "pois"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 180
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 183
    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 184
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 185
    if-nez v2, :cond_2

    .line 186
    goto :goto_1

    .line 188
    :cond_2
    invoke-static {v2}, Lcom/amap/api/services/a/bs;->e(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_3
    return-object v0

    .line 181
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static e(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 202
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 204
    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    const-string v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    new-instance v4, Lcom/amap/api/services/core/PoiItem;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->Y(Ljava/lang/String;)V

    .line 208
    const-string v0, "pname"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->V(Ljava/lang/String;)V

    .line 209
    const-string v0, "cityname"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->U(Ljava/lang/String;)V

    .line 210
    const-string v0, "adname"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->T(Ljava/lang/String;)V

    .line 211
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->Z(Ljava/lang/String;)V

    .line 212
    const-string v0, "pcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->ae(Ljava/lang/String;)V

    .line 213
    const-string v0, "direction"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->ad(Ljava/lang/String;)V

    .line 214
    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/amap/api/services/a/bs;->P(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->V(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v1, "JSONHelper"

    const-string v2, "parseBasePoi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    .line 220
    const-string v1, "JSONHelper"

    const-string v2, "parseBasePoi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    nop

    .line 226
    :cond_0
    :goto_1
    const-string v0, "tel"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->X(Ljava/lang/String;)V

    .line 227
    const-string v0, "type"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->W(Ljava/lang/String;)V

    .line 228
    const-string v0, "entr_location"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->a(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 229
    const-string v0, "exit_location"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->b(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 230
    const-string v0, "website"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->aa(Ljava/lang/String;)V

    .line 231
    const-string v0, "postcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->ab(Ljava/lang/String;)V

    .line 232
    const-string v0, "business_area"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->S(Ljava/lang/String;)V

    .line 233
    const-string v0, "email"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->ac(Ljava/lang/String;)V

    .line 234
    const-string v0, "indoor_map"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/amap/api/services/a/bs;->O(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v4, v1}, Lcom/amap/api/services/core/PoiItem;->m(Z)V

    goto :goto_2

    .line 238
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->m(Z)V

    .line 240
    :goto_2
    const-string v0, "parking_type"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->af(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const-string v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    const-string v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 244
    if-nez v2, :cond_2

    .line 245
    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->i(Ljava/util/List;)V

    goto :goto_5

    .line 247
    :cond_2
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 248
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 249
    if-nez v3, :cond_3

    .line 250
    goto :goto_4

    .line 252
    :cond_3
    invoke-static {v3}, Lcom/amap/api/services/a/bs;->f(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;

    move-result-object v3

    .line 253
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 255
    :cond_4
    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->i(Ljava/util/List;)V

    .line 258
    :cond_5
    :goto_5
    const-string v0, "indoor_data"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/IndoorData;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->a(Lcom/amap/api/services/poisearch/IndoorData;)V

    .line 259
    const-string v0, "biz_ext"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiItemExtension;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/core/PoiItem;->a(Lcom/amap/api/services/poisearch/PoiItemExtension;)V

    .line 260
    invoke-static {v4, p0}, Lcom/amap/api/services/a/bs;->a(Lcom/amap/api/services/core/PoiItem;Lorg/json/JSONObject;)V

    .line 261
    return-object v4
.end method

.method private static e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiItemExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1793
    const-string v0, ""

    .line 1794
    const-string v1, ""

    .line 1795
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1796
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1797
    if-eqz p0, :cond_0

    .line 1798
    const-string p1, "open_time"

    invoke-static {p0, p1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    const-string p1, "rating"

    invoke-static {p0, p1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1802
    :cond_0
    new-instance p0, Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/poisearch/PoiItemExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static f(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 266
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 268
    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    new-instance v4, Lcom/amap/api/services/poisearch/SubPoiItem;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/SubPoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "sname"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->au(Ljava/lang/String;)V

    .line 272
    const-string v0, "subtype"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->av(Ljava/lang/String;)V

    .line 273
    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0}, Lcom/amap/api/services/a/bs;->P(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v4, p0}, Lcom/amap/api/services/poisearch/SubPoiItem;->V(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception p0

    .line 281
    const-string v0, "JSONHelper"

    const-string v1, "parseSubPoiItem"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :catch_1
    move-exception p0

    .line 279
    const-string v0, "JSONHelper"

    const-string v1, "parseSubPoiItem"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    nop

    .line 285
    :cond_0
    :goto_1
    return-object v4
.end method

.method public static g(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    const-string v1, "businessAreas"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 737
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 740
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 741
    new-instance v2, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/BusinessArea;-><init>()V

    .line 742
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 743
    if-nez v3, :cond_1

    .line 744
    goto :goto_1

    .line 746
    :cond_1
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/BusinessArea;->d(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 747
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/BusinessArea;->setName(Ljava/lang/String;)V

    .line 748
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_2
    return-object v0

    .line 738
    :cond_3
    :goto_2
    return-object v0
.end method

.method private static h(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    if-nez p0, :cond_0

    .line 1776
    return-object v0

    .line 1778
    :cond_0
    const-string v1, "photos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1779
    return-object v0

    .line 1781
    :cond_1
    const-string v1, "photos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 1782
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1783
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1784
    new-instance v3, Lcom/amap/api/services/poisearch/Photo;

    invoke-direct {v3}, Lcom/amap/api/services/poisearch/Photo;-><init>()V

    .line 1785
    const-string v4, "title"

    invoke-static {v2, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Photo;->setTitle(Ljava/lang/String;)V

    .line 1786
    const-string v4, "url"

    invoke-static {v2, v4}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amap/api/services/poisearch/Photo;->setUrl(Ljava/lang/String;)V

    .line 1787
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1789
    :cond_2
    return-object v0
.end method
