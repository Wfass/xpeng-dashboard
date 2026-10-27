.class public Lcom/xiaopeng/factory/bean/event/HWAndSWInfoEvent;
.super Ljava/lang/Object;
.source "HWAndSWInfoEvent.java"


# static fields
.field public static final GET_PART_CODE_ERROR:I = 0x2

.field public static final REQUEST_PARAM_ERROR:I = 0x1


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/xiaopeng/factory/bean/event/HWAndSWInfoEvent;->state:I

    .line 15
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/xiaopeng/factory/bean/event/HWAndSWInfoEvent;->state:I

    return v0
.end method
