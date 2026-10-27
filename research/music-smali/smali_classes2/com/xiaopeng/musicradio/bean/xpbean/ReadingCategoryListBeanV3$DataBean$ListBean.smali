.class public Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;
.super Ljava/lang/Object;
.source "ReadingCategoryListBeanV3.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mId:I
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

.field private mNightLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nightLogo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    .line 99
    iget v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mId:I

    iget p1, p1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mId:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNightLogo()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mNightLogo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mId:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mLogo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNightLogo(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->mNightLogo:Ljava/lang/String;

    return-void
.end method
