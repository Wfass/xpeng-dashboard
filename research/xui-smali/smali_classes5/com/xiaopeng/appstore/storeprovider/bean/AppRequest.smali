.class public Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;
.super Ljava/lang/Object;
.source "AppRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

.field public final biz_uk_name:Ljava/lang/String;

.field public config_md5:Ljava/lang/String;

.field public version_code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->biz_uk_name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->version_code:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->config_md5:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->access$000(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->biz_uk_name:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->access$100(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->version_code:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->access$200(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->config_md5:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->config_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->config_md5:Ljava/lang/String;

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->access$300(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    .line 30
    :cond_1
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppRequest{biz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->version_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", config_md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->config_md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", icons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->version_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->config_md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    return-void
.end method
