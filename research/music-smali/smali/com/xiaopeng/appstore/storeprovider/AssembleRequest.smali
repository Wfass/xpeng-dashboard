.class public abstract Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;
.super Ljava/lang/Object;
.source "AssembleRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ASSEMBLE_ACTION_CANCEL:I = 0x190

.field public static final ASSEMBLE_ACTION_ENQUEUE:I = 0x64

.field public static final ASSEMBLE_ACTION_PAUSE:I = 0xc8

.field public static final ASSEMBLE_ACTION_RESUME:I = 0x12c


# instance fields
.field protected final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->a:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->a:I

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    .locals 2

    .line 71
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    const/16 v1, 0x190

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssembleRequest{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
