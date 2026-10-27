.class final Lcom/xiaopeng/musicradio/utils/as$1;
.super Ljava/lang/Object;
.source "MusicToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/as$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/as$1;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/as;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XToast;->showAt(Ljava/lang/CharSequence;I)V

    return-void
.end method
