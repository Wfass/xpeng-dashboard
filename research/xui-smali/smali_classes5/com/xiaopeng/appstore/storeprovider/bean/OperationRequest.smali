.class public Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;
.super Ljava/lang/Object;
.source "OperationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;->params:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;->access$000(Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;->params:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
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

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationRequest;->params:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 26
    return-void
.end method
