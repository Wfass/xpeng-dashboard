.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "BaseHttpCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->initFromPreference(Landroid/content/SharedPreferences;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
