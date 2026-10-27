.class public Lcom/alibaba/fastjson2/JSONReader$SavePoint;
.super Ljava/lang/Object;
.source "JSONReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavePoint"
.end annotation


# instance fields
.field protected final current:I

.field protected final offset:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 4592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4593
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->offset:I

    .line 4594
    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->current:I

    return-void
.end method
