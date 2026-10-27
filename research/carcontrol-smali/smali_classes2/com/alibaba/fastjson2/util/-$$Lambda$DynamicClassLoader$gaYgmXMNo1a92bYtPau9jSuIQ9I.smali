.class public final synthetic Lcom/alibaba/fastjson2/util/-$$Lambda$DynamicClassLoader$gaYgmXMNo1a92bYtPau9jSuIQ9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$DynamicClassLoader$gaYgmXMNo1a92bYtPau9jSuIQ9I;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$DynamicClassLoader$gaYgmXMNo1a92bYtPau9jSuIQ9I;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->lambda$gaYgmXMNo1a92bYtPau9jSuIQ9I(Ljava/lang/Class;)Ljava/security/ProtectionDomain;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
