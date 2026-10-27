.class public final enum LOooO00o/OooO0O0/OooO0O0/OooO0OO;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO00o/OooO0O0/OooO0O0/OooO0OO;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0OO;

.field public static final synthetic OooO0O0:[LOooO00o/OooO0O0/OooO0O0/OooO0OO;


# instance fields
.field public OooO0OO:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    const-string v1, "INTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0OO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    .line 2
    const/4 v1, 0x1

    new-array v1, v1, [LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    aput-object v0, v1, v2

    sput-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO0O0:[LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LOooO00o/OooO0O0/OooO0O0/OooO0OO;
    .locals 1

    .line 1
    const-class v0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    return-object p0
.end method

.method public static values()[LOooO00o/OooO0O0/OooO0O0/OooO0OO;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO0O0:[LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    invoke-virtual {v0}, [LOooO00o/OooO0O0/OooO0O0/OooO0OO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized OooO00o()Landroid/hardware/usb/UsbManager;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO0OO:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO0OO:Ljava/lang/ref/WeakReference;

    .line 7
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO0OO:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 10
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UsbManager \u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
