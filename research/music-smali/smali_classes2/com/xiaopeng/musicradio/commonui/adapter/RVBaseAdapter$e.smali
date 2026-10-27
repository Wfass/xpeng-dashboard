.class public Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->a:I

    .line 311
    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->b:I

    .line 312
    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->c:I

    .line 313
    iput p4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->d:I

    return-void
.end method
