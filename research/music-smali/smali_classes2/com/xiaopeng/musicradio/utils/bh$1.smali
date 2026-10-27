.class final Lcom/xiaopeng/musicradio/utils/bh$1;
.super Ljava/lang/Object;
.source "SPHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/bh$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/utils/bh$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->c()Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/bh$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/utils/bh$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
