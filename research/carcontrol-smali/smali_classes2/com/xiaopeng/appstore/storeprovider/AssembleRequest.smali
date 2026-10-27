.class public abstract Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;
.super Ljava/lang/Object;
.source "AssembleRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/AssembleRequest$AssembleAction;
    }
.end annotation


# static fields
.field public static final ASSEMBLE_ACTION_CANCEL:I = 0x190

.field public static final ASSEMBLE_ACTION_ENQUEUE:I = 0x64

.field public static final ASSEMBLE_ACTION_PAUSE:I = 0xc8

.field public static final ASSEMBLE_ACTION_RESUME:I = 0x12c


# instance fields
.field protected final mAction:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->mAction:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->mAction:I

    return-void
.end method

.method public static cancel(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    .locals 2

    .line 50
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    const/16 v1, 0x190

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static enqueue(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static pause(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    .locals 2

    .line 40
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static resume(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->mAction:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssembleRequest{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 78
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
