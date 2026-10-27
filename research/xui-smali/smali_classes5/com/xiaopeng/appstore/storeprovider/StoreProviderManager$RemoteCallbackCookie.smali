.class Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteCallbackCookie"
.end annotation


# instance fields
.field public callingPackage:Ljava/lang/String;

.field public listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

.field public resType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

    .line 631
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 647
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 648
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 649
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;

    .line 650
    .local v1, "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    iget v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    iget v4, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    iget-object v4, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    .line 651
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    .line 652
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 650
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 657
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteCallbackCookie{lis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", calling=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    .line 641
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleConstants;->resTypeToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    return-object v0
.end method
