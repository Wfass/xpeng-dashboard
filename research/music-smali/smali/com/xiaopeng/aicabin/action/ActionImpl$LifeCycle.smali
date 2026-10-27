.class public final enum Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;
.super Ljava/lang/Enum;
.source "ActionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/action/ActionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifeCycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

.field public static final enum FULL:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

.field public static final enum ONCE:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    const/4 v1, 0x0

    const-string v2, "ONCE"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->ONCE:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    new-instance v0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    const/4 v2, 0x1

    const-string v3, "FULL"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->FULL:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    sget-object v3, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->ONCE:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    aput-object v3, v0, v1

    sget-object v1, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->FULL:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->$VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;
    .locals 1

    .line 35
    const-class v0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;
    .locals 1

    .line 35
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->$VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    invoke-virtual {v0}, [Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    return-object v0
.end method
