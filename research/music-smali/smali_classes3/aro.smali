.class public Laro;
.super Ljava/lang/Object;
.source "TryListenFileConverter.java"

# interfaces
.implements Lorg/greenrobot/greendao/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/greenrobot/greendao/converter/PropertyConverter<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_0
    new-instance v0, Laro$1;

    invoke-direct {v0, p0}, Laro$1;-><init>(Laro;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {p0, p1}, Laro;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Laro;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p1

    return-object p1
.end method
