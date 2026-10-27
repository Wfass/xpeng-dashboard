.class final Lcom/xiaopeng/musicradio/utils/bh$2;
.super Ljava/lang/Object;
.source "SPHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/bh$2;->a:Ljava/lang/String;

    iput p2, p0, Lcom/xiaopeng/musicradio/utils/bh$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->c()Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/bh$2;->a:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/utils/bh$2;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method
