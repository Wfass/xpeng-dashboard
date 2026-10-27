.class final Lcom/xiaopeng/musicradio/utils/bh$3;
.super Ljava/lang/Object;
.source "SPHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/bh$3;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaopeng/musicradio/utils/bh$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->c()Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/bh$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/utils/bh$3;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method
