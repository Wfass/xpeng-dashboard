.class final Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;
.super Ljava/lang/Object;
.source "TrafficStatsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field public tag:I

.field public uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->uid:I

    .line 186
    iput p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry$Entry;->tag:I

    .line 187
    return-void
.end method
