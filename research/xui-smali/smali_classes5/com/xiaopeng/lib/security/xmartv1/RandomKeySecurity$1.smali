.class Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "RandomKeySecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->individualWithData(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    .line 157
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
