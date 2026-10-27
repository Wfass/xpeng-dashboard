.class public Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;
.super Ljava/lang/Object;
.source "AppGroupsResp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIcons"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dock_icon:Ljava/lang/String;

.field public dock_icon_md5:Ljava/lang/String;

.field public large_icon:Ljava/lang/String;

.field public large_icon_md5:Ljava/lang/String;

.field public small_icon:Ljava/lang/String;

.field public small_icon_md5:Ljava/lang/String;

.field public small_night_icon:Ljava/lang/String;

.field public small_night_icon_md5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 268
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
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

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon_md5:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon_md5:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon_md5:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon_md5:Ljava/lang/String;

    .line 249
    return-void
.end method

.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->large_icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_icon_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon_md5:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->large_icon_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon_md5:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->dock_icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->dock_icon_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon_md5:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_night_icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;->small_night_icon_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon_md5:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public static newBuilder()Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;
    .locals 1

    .line 281
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppIcons{small_icon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", large_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", small_icon_md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon_md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", large_icon_md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon_md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dock_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dock_icon_md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon_md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", small_night_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", small_night_icon_md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon_md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon_md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon_md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon_md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon_md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    return-void
.end method
