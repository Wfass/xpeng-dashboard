.class final Lcom/xiaopeng/lib/utils/a/c$1;
.super Ljava/lang/Object;
.source "EnvConfigHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/a/c;->pb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Xd:Ljava/util/Properties;


# direct methods
.method constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/a/c$1;->Xd:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/a/c$1;->Xd:Ljava/util/Properties;

    const-string v1, "/sdcard/pre_env.ini"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a/c;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 66
    return-void
.end method
