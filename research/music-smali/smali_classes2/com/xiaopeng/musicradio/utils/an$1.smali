.class final Lcom/xiaopeng/musicradio/utils/an$1;
.super Ljava/lang/Object;
.source "MediaStatUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/an;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/xiaopeng/musicradio/utils/an$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/an$1;->a:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/an;->b(I)I

    return-void
.end method
