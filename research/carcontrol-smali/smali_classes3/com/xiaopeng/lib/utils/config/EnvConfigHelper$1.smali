.class final Lcom/xiaopeng/lib/utils/config/EnvConfigHelper$1;
.super Ljava/lang/Object;
.source "EnvConfigHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;->saveFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$prop:Ljava/util/Properties;


# direct methods
.method constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$prop"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper$1;->val$prop:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper$1;->val$prop:Ljava/util/Properties;

    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->PRE_ENV_FILE_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;->saveToPath(Ljava/util/Properties;Ljava/lang/String;)V

    return-void
.end method
