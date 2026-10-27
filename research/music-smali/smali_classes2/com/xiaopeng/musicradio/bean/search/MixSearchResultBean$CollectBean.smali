.class public Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;
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
    name = "CollectBean"
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

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
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

.field private mIsFavourite:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFavourite"
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

.field private mSongCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songCount"
    .end annotation
.end field

.field private mType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 194
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    if-eqz v0, :cond_1

    .line 195
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 202
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

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->allLogos:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlightName()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mHighlightName:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mSongCount:I

    return v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1

    .line 165
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isIsFavourite()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mIsFavourite:Z

    return v0
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

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->allLogos:Ljava/util/List;

    return-void
.end method

.method public setHighlightName(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mHighlightName:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mId:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mLogo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->mName:Ljava/lang/String;

    return-void
.end method
