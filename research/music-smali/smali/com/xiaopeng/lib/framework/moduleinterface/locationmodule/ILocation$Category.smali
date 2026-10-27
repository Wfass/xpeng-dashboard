.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
.super Ljava/lang/Enum;
.source "ILocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

.field public static final enum DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

.field public static final enum GPS_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    const/4 v1, 0x0

    const-string v2, "GPS_LOCATION"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->GPS_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    const/4 v2, 0x1

    const-string v3, "DR_LOCATION"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    sget-object v3, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->GPS_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    aput-object v3, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
    .locals 1

    .line 18
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    return-object v0
.end method
