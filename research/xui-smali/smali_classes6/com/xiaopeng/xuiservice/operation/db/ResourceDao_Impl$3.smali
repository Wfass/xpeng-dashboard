.class Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$3;
.super Landroidx/room/SharedSQLiteStatement;
.source "ResourceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$3;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 107
    const-string v0, "UPDATE resourceinfo SET status = ? WHERE resourceId = ?"

    .line 108
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "UPDATE resourceinfo SET status = ? WHERE resourceId = ?"

    return-object v1
.end method
