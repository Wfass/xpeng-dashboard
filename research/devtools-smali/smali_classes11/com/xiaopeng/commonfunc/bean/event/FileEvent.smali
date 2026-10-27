.class public Lcom/xiaopeng/commonfunc/bean/event/FileEvent;
.super Ljava/lang/Object;
.source "FileEvent.java"


# static fields
.field public static final DELETE_SUCCESS:I = 0x1


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/FileEvent;->status:I

    .line 13
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/FileEvent;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/FileEvent;->status:I

    .line 21
    return-void
.end method
