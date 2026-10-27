.class public Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;
.super Ljava/lang/Object;
.source "ConfigurationDataImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mKey:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mValue:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mKey:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mValue:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
