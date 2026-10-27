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
.field public large_icon:Ljava/lang/String;

.field public small_icon:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 178
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
