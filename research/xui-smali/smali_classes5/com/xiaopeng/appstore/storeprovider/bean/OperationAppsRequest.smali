.class public Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
.super Ljava/lang/Object;
.source "OperationAppsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public depend_param:Ljava/lang/String;

.field public group_type:I

.field public operation_check_params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->operation_check_params:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->group_type:I

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->access$000(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->operation_check_params:Ljava/util/List;

    .line 25
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->access$100(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->group_type:I

    .line 26
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->access$200(Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->depend_param:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static newBuilder(I)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;
    .locals 1
    .param p0, "groupType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupType"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationAppsRequest{params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->operation_check_params:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->group_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->operation_check_params:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 40
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->group_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
