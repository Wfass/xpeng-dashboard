.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;
.super Ljava/lang/Enum;
.source "IStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

.field public static final enum BOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

.field public static final enum UNBOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    const/4 v1, 0x0

    const-string v2, "BOUND"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->BOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    .line 13
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    const/4 v2, 0x1

    const-string v3, "UNBOUND"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->UNBOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    sget-object v3, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->BOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->UNBOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;
    .locals 1

    .line 4
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;
    .locals 1

    .line 4
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    return-object v0
.end method
