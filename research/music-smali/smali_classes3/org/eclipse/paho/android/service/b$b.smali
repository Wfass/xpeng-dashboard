.class Lorg/eclipse/paho/android/service/b$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/eclipse/paho/android/service/i;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/i;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "mqttAndroidService.db"

    const/4 v2, 0x1

    .line 78
    invoke-direct {p0, p2, v1, v0, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 69
    iput-object v0, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    .line 79
    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MQTTDatabaseHelper"

    invoke-interface {v0, v3, v1}, Lorg/eclipse/paho/android/service/i;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    const-string v0, "created the table"

    invoke-interface {p1, v3, v0}, Lorg/eclipse/paho/android/service/i;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 105
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    const-string v1, "onCreate"

    invoke-interface {v0, v3, v1, p1}, Lorg/eclipse/paho/android/service/i;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    throw p1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 123
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    const-string p3, "onUpgrade"

    const-string v0, "MQTTDatabaseHelper"

    invoke-interface {p2, v0, p3}, Lorg/eclipse/paho/android/service/i;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS MqttArrivedMessageTable"

    .line 125
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/b$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 131
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    const-string p2, "onUpgrade complete"

    invoke-interface {p1, v0, p2}, Lorg/eclipse/paho/android/service/i;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 127
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/i;

    invoke-interface {p2, v0, p3, p1}, Lorg/eclipse/paho/android/service/i;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 128
    throw p1
.end method
