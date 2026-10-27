.class Lcom/xiaopeng/devtools/utils/u$2;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/utils/u;->bd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BX:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/u$2;->BX:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/u$2;->BX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/u$2;->BX:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->i(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void
.end method
