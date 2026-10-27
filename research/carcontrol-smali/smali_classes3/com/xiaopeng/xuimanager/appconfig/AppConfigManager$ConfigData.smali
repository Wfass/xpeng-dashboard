.class public Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;
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
    name = "ConfigData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public config:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    new-instance v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->packageName:Ljava/lang/String;

    .line 144
    const-class v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->config:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->packageName:Ljava/lang/String;

    .line 136
    const-class v0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->config:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->config:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
