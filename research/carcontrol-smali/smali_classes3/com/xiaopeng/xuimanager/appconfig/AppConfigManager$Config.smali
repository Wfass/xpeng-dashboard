.class public Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
.super Ljava/lang/Object;
.source "AppConfigManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private setFloat(Ljava/lang/String;F)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config.setFloat key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConfigManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method private setInt(Ljava/lang/String;I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config.setInt key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConfigManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private setLong(Ljava/lang/String;J)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config.setLong key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConfigManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config.setString key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConfigManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAppBarFlags(I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 1

    const-string v0, "appBarFlags"

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->setInt(Ljava/lang/String;I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundStatus(I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 1

    const-string v0, "backgroundStatus"

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->setInt(Ljava/lang/String;I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    move-result-object p1

    return-object p1
.end method

.method public setBrand(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 1

    const-string v0, "brand"

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    move-result-object p1

    return-object p1
.end method

.method public setDensityDpi(I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 1

    const-string v0, "densityDpi"

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->setInt(Ljava/lang/String;I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    move-result-object p1

    return-object p1
.end method

.method public setPaddingBackground(I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;
    .locals 1

    const-string v0, "paddingBackground"

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->setInt(Ljava/lang/String;I)Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config{bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 46
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
