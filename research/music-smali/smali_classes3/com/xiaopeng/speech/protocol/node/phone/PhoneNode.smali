.class public Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;
.super Lbut;
.source "PhoneNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/phone/a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:I = -0x1

.field private static volatile h:I = 0x0

.field private static volatile i:Z = false


# instance fields
.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:I

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 253
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object p1

    invoke-virtual {p1}, Lbus;->g()Lbwx;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "phone.get.bluetooth.status"

    invoke-virtual {p1, v0, p2}, Lbwx;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p1

    .line 254
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    invoke-virtual {v0}, Lbus;->g()Lbwx;

    move-result-object v0

    const-string v1, "phone.get.contact.sync.status"

    invoke-virtual {v0, v1, p2}, Lbwx;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p2

    .line 256
    new-instance v0, Lbxg;

    invoke-direct {v0}, Lbxg;-><init>()V

    .line 257
    sget v1, Lbwa$a;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbxg;->a(Ljava/lang/String;)Lbxg;

    const-string v1, "phone"

    .line 258
    invoke-virtual {v0, v1}, Lbxg;->b(Ljava/lang/String;)Lbxh;

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->d:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/bean/Value;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "phone_bluetooth"

    invoke-virtual {v0, v1, p1}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    :cond_0
    if-eqz p2, :cond_1

    .line 264
    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/bean/Value;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "phone_sync"

    invoke-virtual {v0, p2, p1}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 266
    :cond_1
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object p1

    invoke-virtual {p1}, Lbus;->c()Lcom/xiaopeng/speech/actor/a;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v1, "native://phone.query.bluetooth.sync"

    invoke-direct {p2, v1}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->a(Lbxh;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/actor/a;->a(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 640
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->b(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object p2

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 643
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 644
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/a;->a(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "content"

    const-string v0, "extra"

    const-string v1, "subTitle"

    .line 652
    :try_start_0
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->e:Ljava/lang/String;

    .line 653
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "soundArea"

    const/4 v5, 0x0

    .line 655
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->l:I

    if-eqz v3, :cond_0

    const-string v4, "raw_query"

    .line 657
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 659
    iput-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->k:Ljava/lang/String;

    .line 661
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 666
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v5

    .line 667
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 668
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 670
    new-instance v6, Lcom/xiaopeng/speech/protocol/node/phone/bean/a$a;

    invoke-direct {v6}, Lcom/xiaopeng/speech/protocol/node/phone/bean/a$a;-><init>()V

    const-string v7, "title"

    .line 671
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/a$a;->c(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 674
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/a$a;->a(Ljava/lang/String;)V

    .line 676
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v7, "id"

    .line 678
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/a$a;->b(Ljava/lang/String;)V

    .line 680
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->k:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/a$a;->d(Ljava/lang/String;)V

    .line 681
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "PhoneNode"

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryDetailPhoneInfo data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 692
    :goto_2
    array-length p2, p1

    if-ge v5, p2, :cond_5

    .line 693
    aget-object p2, p1, v5

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {p2, v3}, Lcom/xiaopeng/speech/protocol/node/phone/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 697
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public e()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1002
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1003
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/a;->h()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 811
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "phone"

    .line 812
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 813
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->b(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object p1

    goto :goto_2

    .line 816
    :cond_0
    new-instance p2, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "name"

    .line 817
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->c(Ljava/lang/String;)V

    const-string p1, "number"

    .line 818
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->d(Ljava/lang/String;)V

    const-string p1, "id"

    .line 819
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    .line 822
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    move-object p1, p2

    :goto_2
    if-nez p1, :cond_1

    const-string p1, "phoneBean == null"

    .line 825
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 828
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 830
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 831
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 840
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "select_num"

    .line 841
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 842
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->f:Ljava/util/List;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    if-lez p1, :cond_2

    .line 847
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_0

    .line 853
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->f:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    goto :goto_2

    .line 848
    :cond_2
    :goto_0
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object p2

    invoke-virtual {p2}, Lbus;->d()Lbxc;

    move-result-object p2

    sget v0, Lbwa$a;->out_of_range:I

    .line 849
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-virtual {p2, v0}, Lbxc;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select_num is  == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "phoneBeanList == null"

    .line 843
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 856
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    const-string p1, "phoneBean == null"

    .line 859
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 862
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 864
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_5

    .line 865
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v1

    invoke-virtual {v1}, Lbus;->d()Lbxc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lbwa$a;->calling:I

    .line 867
    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-virtual {v1, v2}, Lbxc;->c(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 873
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object p1

    invoke-virtual {p1}, Lbus;->f()Lbxa;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lbxa;->b(Z)V

    .line 874
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 876
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 877
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 884
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object p1

    invoke-virtual {p1}, Lbus;->f()Lbxa;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lbxa;->b(Z)V

    .line 885
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 887
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 888
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 896
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 898
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 899
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 906
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 908
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 909
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 916
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 918
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 919
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 926
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 928
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 929
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 938
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "number"

    .line 939
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 941
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 943
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 945
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 946
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/phone/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 955
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "number"

    .line 956
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 958
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 960
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 962
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 963
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/phone/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 980
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 982
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 983
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 990
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 991
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->j:I

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 993
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 994
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/a;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->j:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/a;->a(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
