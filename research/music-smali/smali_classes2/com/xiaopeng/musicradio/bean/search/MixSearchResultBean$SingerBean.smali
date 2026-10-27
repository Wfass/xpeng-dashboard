.class public Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;
.super Ljava/lang/Object;
.source "MixSearchResultBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingerBean"
.end annotation


# instance fields
.field private allLogos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightName:Landroid/text/SpannableStringBuilder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 267
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    if-eqz v0, :cond_1

    .line 268
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getId()Ljava/lang/String;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 275
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllLogos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->allLogos:Ljava/util/List;

    return-object v0
.end method

.method public getHighlightName()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mHighlightName:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->allLogos:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->allLogos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->allLogos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mLogo:Ljava/lang/String;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setAllLogos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->allLogos:Ljava/util/List;

    return-void
.end method

.method public setHighlightName(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mHighlightName:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mId:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mLogo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->mName:Ljava/lang/String;

    return-void
.end method
